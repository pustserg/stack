require 'integration_helper'

feature 'Prof can assign task to team' do
  let!(:team) { create(:team) }
  let!(:task) { create(:task) }
  scenario 'prof adds task to team' do
    visit edit_task_path(task)

    check 'Finished'

    click_on t('common.save')

    task.reload
    expect(task.finished?).to eq true
  end
end
