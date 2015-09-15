require 'integration_helper'

feature 'Prof can delete task' do

  before { create_list(:task, 2) }

  scenario 'Prof can delete task' do
    visit tasks_path

    expect(Task.count).to eq 2

    within 'div.collection-item:first-of-type' do
      click_on t('tasks.delete_task')
    end

    expect(current_path).to eq tasks_path
    expect(Task.count).to eq 1
  end
end
