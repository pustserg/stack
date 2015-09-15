require 'integration_helper'

feature 'Prof can add task' do
  scenario 'Prof tries to add task' do
    name = Faker::Lorem.word
    description = Faker::Lorem.paragraph

    visit tasks_path
    click_on t('tasks.add_task')

    fill_in 'Name', with: name
    fill_in 'Description', with: description

    click_on t('common.save')
    expect(current_path).to eq tasks_path
    task = Task.last
    expect(task.name).to eq name
    expect(task.description).to eq description
  end

  scenario 'Prof tries to add task without name' do
    visit tasks_path
    click_on t('tasks.add_task')

    click_on t('common.save')

    expect(page).to have_content %q(Name can't be blank)
  end
end
